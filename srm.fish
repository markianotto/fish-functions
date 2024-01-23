function srm
    shred -n 3 $argv
    rm $argv
end
