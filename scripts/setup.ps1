# Create folder structure
$folders = @(
    "config",
    "docs",
    "experiments",
    "projects",
    "scripts",
    "tools",
    ".github\workflows"
)

foreach ($folder in $folders) {
    if (-not (Test-Path $folder)) {
        New-Item -ItemType Directory -Path $folder | Out-Null
    }
}

# Create placeholder files
$files = @(
    "config\appsettings.json",
    "HISTORY.md",
    "SECURITY.md",
    "CONTRIBUTING.md",
    ".gitignore",
    "LICENSE"
)

foreach ($file in $files) {
    if (-not (Test-Path $file)) {
        New-Item -ItemType File -Path $file | Out-Null
    }
}
