
#!/bin/bash

function display_usage{
	echo" useage: ./backup.sh <path to you source > < path to backup folder>"
}
if [  $# -e0 ];
then
	display_usage
	
fi

source_dir= #1
timestamp=$(date '+%Y-%m-%H-%M-%S')
backup_dir=$2

function create_backup{
	zip -r "${backup_dir}/backup_${tiemstamp}.zip" "${source_dir}" >/dev/null

	if [ $? -eq 0 ]; then
		echo "backup genrated sucessfully for ${timestamp}"
	fi

}

function perform_rotation{
	backup= ($(ls -t "${backup_dir}/backup_"*.zip 2>/dev/null))
	if [ "${#backup[@]}" -gt 5 ]; then
		echo "performing roatation for 5 days"
		backup_to_remove=("${backup[@]:5}")
		echo "${backup_to_remove[@]}"

		for backup in "${backup_to_remove[@]}";
		do
			rm if ${backup}
		done
			fi
			
	
	

}


create function
perform_rotation
