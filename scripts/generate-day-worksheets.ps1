param(
    [switch]$Overwrite
)

$repoRoot = Split-Path -Parent $PSScriptRoot
$roadmapFile = Join-Path $repoRoot "ROADMAP.md"
$daysDirectory = Join-Path $repoRoot "days"
$indexFile = Join-Path $daysDirectory "README.md"

$resourceGroups = @(
    @{
        Start = 1
        End = 20
        Links = @(
            "[Pro Git book](https://git-scm.com/book/en/v2)",
            "[GitHub Skills](https://skills.github.com/)",
            "[Ansible getting started](https://docs.ansible.com/projects/ansible/latest/getting_started/index.html)"
        )
        Practice = "[Foundation toolkit project](../../projects/project-01-foundation-toolkit/README.md)"
    },
    @{
        Start = 21
        End = 40
        Links = @(
            "[Docker get started](https://docs.docker.com/get-started/)",
            "[GitHub Actions documentation](https://docs.github.com/en/actions)"
        )
        Practice = "[Container delivery project](../../projects/project-02-container-delivery/README.md)"
    },
    @{
        Start = 41
        End = 60
        Links = @(
            "[Terraform tutorials](https://developer.hashicorp.com/terraform/tutorials)"
        )
        Practice = "[Infrastructure as code project](../../projects/project-03-infrastructure-as-code/README.md)"
    },
    @{
        Start = 61
        End = 80
        Links = @(
            "[Kubernetes basics](https://kubernetes.io/docs/tutorials/kubernetes-basics/)",
            "[Helm quickstart](https://helm.sh/docs/intro/quickstart/)",
            "[Argo CD getting started](https://argo-cd.readthedocs.io/en/stable/getting_started/)"
        )
        Practice = "[Kubernetes platform project](../../projects/project-04-kubernetes-platform/README.md)"
    },
    @{
        Start = 81
        End = 100
        Links = @(
            "[Prometheus overview](https://prometheus.io/docs/introduction/overview/)",
            "[OpenTelemetry documentation](https://opentelemetry.io/docs/)",
            "[OWASP DevSecOps guideline](https://owasp.org/www-project-devsecops-guideline/)"
        )
        Practice = "[Production-ready capstone](../../projects/project-05-production-ready-capstone/README.md)"
    }
)

$rows = Get-Content $roadmapFile | ForEach-Object {
    if ($_ -match '^\| ([0-9]{3}) \| ([^|]+) \| ([^|]+) \| ([^|]+) \|$') {
        [PSCustomObject]@{
            Day = [int]$Matches[1]
            Number = $Matches[1]
            Topic = $Matches[2].Trim()
            Task = $Matches[3].Trim()
            Artifact = $Matches[4].Trim()
        }
    }
}

if ($rows.Count -ne 100) {
    throw "Expected 100 roadmap rows but found $($rows.Count)."
}

function ConvertTo-Slug {
    param([string]$Text)

    $slug = $Text.ToLowerInvariant() -replace '[^a-z0-9]+', '-'
    return $slug.Trim('-')
}

function Get-ResourceGroup {
    param([int]$Day)

    return $resourceGroups | Where-Object { $Day -ge $_.Start -and $Day -le $_.End } | Select-Object -First 1
}

$indexLines = @(
    "# Daily DevOps Worksheets",
    "",
    "Open the worksheet for the current day, follow the research prompts, complete the hands-on task, and commit your evidence.",
    "",
    "| Day | Topic | Worksheet |",
    "| --- | --- | --- |"
)

foreach ($row in $rows) {
    $slug = ConvertTo-Slug $row.Topic
    $folderName = "day-$($row.Number)-$slug"
    $targetDirectory = Join-Path $daysDirectory $folderName
    $targetFile = Join-Path $targetDirectory "README.md"
    $resourceGroup = Get-ResourceGroup $row.Day
    $resourceLines = $resourceGroup.Links | ForEach-Object { "- $_" }
    $practiceLine = "- Related milestone: $($resourceGroup.Practice)"
    $nextRow = $rows | Where-Object { $_.Day -eq ($row.Day + 1) } | Select-Object -First 1

    if ($nextRow) {
        $nextSlug = ConvertTo-Slug $nextRow.Topic
        $nextStep = "Continue with [Day $($nextRow.Number): $($nextRow.Topic)](../day-$($nextRow.Number)-$nextSlug/README.md)."
    } else {
        $nextStep = "Review your 100-day portfolio and prepare your final demo."
    }

    $indexLines += "| $($row.Number) | $($row.Topic) | [Open worksheet]($folderName/README.md) |"

    if ((Test-Path $targetFile) -and -not $Overwrite) {
        continue
    }

    New-Item -ItemType Directory -Path $targetDirectory -Force | Out-Null

    $content = @(
        "# Day $($row.Number): $($row.Topic)",
        "",
        "## Goal",
        "",
        "Understand **$($row.Topic)** and complete this practical task: **$($row.Task)**",
        "",
        "Your evidence for today is: **$($row.Artifact)**",
        "",
        "## Research Questions",
        "",
        "- What problem does $($row.Topic) solve?",
        "- Where does it fit in a modern DevOps workflow?",
        "- Which commands, files, or concepts should you be able to explain after today's work?",
        "- What is one common mistake, failure mode, or tradeoff to watch for?",
        "",
        "## Starting Points",
        ""
    )

    $content += $resourceLines
    $content += $practiceLine
    $content += @(
        "- Browse the broader [resource guide](../../RESOURCES.md) when you need another explanation.",
        "",
        "## Hands-on Work",
        "",
        "1. Read enough to answer the research questions in your own words.",
        "2. Complete today's task: **$($row.Task)**",
        "3. Add your **$($row.Artifact)** to this folder, or link to it under Artifact / Evidence.",
        "4. Record the most useful commands, configuration, or troubleshooting steps under Notes.",
        "",
        "## Completion Checklist",
        "",
        "- [ ] I answered the research questions in my own words.",
        "- [ ] I completed the hands-on task.",
        "- [ ] I added or linked my artifact.",
        "- [ ] I wrote a short reflection.",
        "- [ ] I marked Day $($row.Number) complete in [PROGRESS.md](../../PROGRESS.md).",
        "- [ ] I committed and pushed my work to GitHub.",
        "",
        "## Artifact / Evidence",
        "",
        "Add files, screenshots, links, or a short output sample here.",
        "",
        "## Notes",
        "",
        "- Add research notes here.",
        "- Add commands or configuration here.",
        "",
        "## What I Learned",
        "",
        "- Add reflections here.",
        "",
        "## Next Step",
        "",
        $nextStep
    )

    Set-Content -Path $targetFile -Value $content
}

Set-Content -Path $indexFile -Value $indexLines
Write-Host "Generated DevOps worksheet index and missing daily worksheets."
