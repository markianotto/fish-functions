function pvu
    set windows_path $argv[1]
    set drive_letter (echo $windows_path | cut -d':' -f1)
    set rest_of_path (echo $windows_path | cut -d':' -f2 | string replace -a '\\' '/')
    set unix_path "/mnt/"(echo $drive_letter | tr '[:upper:]' '[:lower:]')"$rest_of_path"
    echo $unix_path
end
