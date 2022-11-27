# NOTE: Step through these one by one.


# You need a decent amount of hard drive space to work with GeoCities.
# - ≥1TB for the source data (from torrent or archive.org).
# - ≥2TB for the work space and final data set.
# - Use ext4 as the file systems. GeoCities was case-sensitive.


# We need to make sure all dependencies are installed upfront for Ubuntu 22.04.
# Start by updating the system.

sudo apt update && sudo apt dist-upgrade -y

# Install additional Perl Modules via apt; we do not use cpan here.
# These are needed for DBI, Data::Dumper, IO::All, Try::Tiny, XML::TreePP, DBD::Pg, YAML qw(LoadFile)

sudo apt install libdbi-perl libdata-dumper-simple-perl libio-all-perl libtry-tiny-perl libxml-treepp-perl libdbd-pg-perl libconfig-yaml-perl libcapture-tiny-perl

# Install other things that are needed, convmv (UTF-8), postgresql (database magic)

sudo apt install build-essential p7zip-full convmv postgresql postgresql-contrib libpq-dev libglib2.0-bin findutils



# Next let's set some environment variables.

sudo nano ~/.bashrc

# Replace the username and name your drives appropriately.
# Username is assumed to be "ubuntu".
# Paste block at the bottom of the .bashrc file.

export GEO_SOURCE=/media/ubuntu/GC_1TB_SRC                            # Source distribution files; 1TB HDD
export GEO_WORK=/media/ubuntu/GC_2TB/work                             # Work (tmp) folder; 2TB SSD
export GEO_ARCHIVE=/media/ubuntu/GC_2TB/archive                       # Final data set (The Archives); 2TB SSD

export GEO_LOGS=/media/ubuntu/GC_2TB/log                              # Log files/lists used by PostgreSQL
export GEO_SCRIPTS=/home/ubuntu/Documents/GitHub/GeoCities/scripts    # Where the magic lives (Software)
# export GEO_SCREENSHOTS=/media/ubuntu/GC_2TB/screenshots             # Screenshots (Unused)

export GEO_DB_HOST='localhost'                                        # Database access
export GEO_DB_DB='turtles'                                            # PostgreSQL database name
export GEO_DB_USER='despens'                                          # PostgreSQL database user - Thanks Despens!
export GEO_DB_PASSWD='despens'                                        # PostgreSQL database password - Thanks Despens!
export PGUSER='despens'                                               # Can't get enough variables. Is this required? Probably not.
export PGPASSFILE='/home/ubuntu/.pgpass'                              # Databases scare me

# Some scripts will wipe temporary files after they are run. The only versions kept will be:
# - the originals (as in how the data was distributed, located in $GEO_SOURCE/geocities.archiveteam.torrent,
# - and the finished, workable archive files, located in $GEO_ARCHIVE

# Make some folders
mkdir -p /media/ubuntu/GC_2TB/archive
mkdir -p /media/ubuntu/GC_2TB/log
mkdir -p /media/ubuntu/GC_2TB/work



### PostgreSQL privilege escalation

# Reveal the postgresql version installed.
(ls /etc/postgresql/*/main/pg_hba.conf)
(ls /etc/postgresql/*/main/postgresql.conf)

# Make database do database things
# If using a version other than 14, adjust the version number to what the above commands outputted.
# Reference: https://gist.github.com/AtulKsol/4470d377b448e56468baef85af7fd614

sudo nano /etc/postgresql/14/main/pg_hba.conf

# "local" is for Unix domain socket connections only
local   all             all                                     trust

# Add more things
sudo nano /etc/postgresql/14/main/postgresql.conf
listen_addresses = '*'

sudo systemctl restart postgresql



### Setup in PostgreSQL - Create despens role (user)
sudo su - postgres                                                                              # Logs into postgres with the default admin account.
psql                                                                                            # Opens psql.
\du                                                                                             # Lists current users.
CREATE ROLE despens WITH SUPERUSER CREATEDB CREATEROLE INHERIT LOGIN REPLICATION BYPASSRLS;     # Creates despens "role" aka the PostgreSQL database user.
\password despens                                                                               # Activates and changes the password from nothing.
despens                                                                                         # New password.
despens                                                                                         # Confirming password.
\du                                                                                             # Lists current users - confirm despens exists.
# Create database turtles and give despens full access
CREATE DATABASE turtles;                                                                        # Create the database turtles.
GRANT ALL PRIVILEGES ON DATABASE turtles TO despens;                                            # Allow despens access to turtles
\l                                                                                              # Lists database
\q                                                                                              # Quit postgresql.
exit

# You can install pgAdmin 4 to look around the database like stats:
# https://www.itzgeek.com/how-tos/linux/ubuntu-how-tos/install-pgadmin-on-ubuntu-22-04.html


### To prevent many prompts, save the table, user and password to a file.
nano ~/.pgpass
localhost:5432:turtles:despens:despens
chmod 0600 ~/.pgpass


# Reboot for good measure.
sudo reboot
