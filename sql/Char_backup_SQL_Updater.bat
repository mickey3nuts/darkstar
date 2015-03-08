REM I change to C because I put my bat file in a different drive, where my PlayOnline is kept, so I need to change the directory at start
c:

REM If your MySQL.exe is located in a different place, you need to change this. This is where my MySQL is installed.
cd C:\Program Files\MySQL\MySQL Server 5.6\bin

REM If you changed the root name, change the -uroot to -uwhatevernameyouused, the password to -pwhateveryourpasswordis. Change the save directory to anywhere you would like to back up your characters.
mysqldump.exe -e -uroot -proot dspdb auction_house > C:\HTPC\Darkstar_Projects\charbackup\auction_house.sql
mysqldump.exe -e -uroot -proot dspdb accounts > C:\HTPC\Darkstar_Projects\charbackup\accounts.sql
mysqldump.exe -e -uroot -proot dspdb accounts_banned > C:\HTPC\Darkstar_Projects\charbackup\accounts_banned.sql
mysqldump.exe -e -uroot -proot dspdb char_effects > C:\HTPC\Darkstar_Projects\charbackup\char_effects.sql
mysqldump.exe -e -uroot -proot dspdb char_equip > C:\HTPC\Darkstar_Projects\charbackup\char_equip.sql
mysqldump.exe -e -uroot -proot dspdb char_exp > C:\HTPC\Darkstar_Projects\charbackup\char_exp.sql
mysqldump.exe -e -uroot -proot dspdb char_inventory > C:\HTPC\Darkstar_Projects\charbackup\char_inventory.sql
mysqldump.exe -e -uroot -proot dspdb char_jobs > C:\HTPC\Darkstar_Projects\charbackup\char_jobs.sql
mysqldump.exe -e -uroot -proot dspdb char_look > C:\HTPC\Darkstar_Projects\charbackup\char_look.sql
mysqldump.exe -e -uroot -proot dspdb char_pet > C:\HTPC\Darkstar_Projects\charbackup\char_pet.sql
mysqldump.exe -e -uroot -proot dspdb char_pet_name > C:\HTPC\Darkstar_Projects\charbackup\char_pet_name.sql
mysqldump.exe -e -uroot -proot dspdb char_points > C:\HTPC\Darkstar_Projects\charbackup\char_points.sql
mysqldump.exe -e -uroot -proot dspdb char_profile > C:\HTPC\Darkstar_Projects\charbackup\char_profile.sql
mysqldump.exe -e -uroot -proot dspdb char_skills > C:\HTPC\Darkstar_Projects\charbackup\char_skills.sql
mysqldump.exe -e -uroot -proot dspdb char_stats > C:\HTPC\Darkstar_Projects\charbackup\char_stats.sql
mysqldump.exe -e -uroot -proot dspdb char_storage > C:\HTPC\Darkstar_Projects\charbackup\char_storage.sql
mysqldump.exe -e -uroot -proot dspdb char_vars > C:\HTPC\Darkstar_Projects\charbackup\char_vars.sql
mysqldump.exe -e -uroot -proot dspdb char_weapon_skill_points > C:\HTPC\Darkstar_Projects\charbackup\char_weapon_skill_points.sql
mysqldump.exe -e -uroot -proot dspdb chars > C:\HTPC\Darkstar_Projects\charbackup\chars.sql
mysqldump.exe -e -uroot -proot dspdb conquest_system > C:\HTPC\Darkstar_Projects\charbackup\conquest_system.sql
mysqldump.exe -e -uroot -proot dspdb delivery_box > C:\HTPC\Darkstar_Projects\charbackup\delivery_box.sql
mysqldump.exe -e -uroot -proot dspdb linkshells > C:\HTPC\Darkstar_Projects\charbackup\linkshells.sql

REM I always back up my full dspdb in case I make some mistake. I once forgot to backup my account, so when I replaced my directory, there was no account to log into. I was able to restore this only because I had the full dspdb dump
mysqldump.exe -e -uroot -proot dspdb > C:\HTPC\Darkstar_Projects\charbackup\dspdb_backup\dspdb.sql