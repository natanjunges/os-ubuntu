# bleUX, a user-centric desktop Linux distribution
# Copyright (C) 2024  Natan Junges <natanajunges@gmail.com>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

set -e

. /usr/lib/bleux-features/utils.sh

case "$1" in
    enable)
        sed -i s/^WaylandEnable=false/#WaylandEnable=false/ /etc/gdm3/custom.conf
    ;;
    disable)
        sed -i s/#WaylandEnable=false/WaylandEnable=false/ /etc/gdm3/custom.conf
    ;;
    *)
        die_subcommand
    ;;
esac
