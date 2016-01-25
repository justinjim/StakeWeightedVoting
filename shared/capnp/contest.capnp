# Copyright 2015 Follow My Vote, Inc.
# This file is part of The Follow My Vote Stake-Weighted Voting Application ("SWV").
#
# SWV is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# SWV is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with SWV.  If not, see <http://www.gnu.org/licenses/>.

@0xd073c95fea7a1ec4;

using Map = import "map.capnp".Map;

struct UnsignedContest {
    id @0 :Data;
    name @1 :Text;
    description @2 :Text;
    tags @3 :Map(Text, Text);
    # Map of key to value
    contestants @4 :Map(Text, Text);
    # Map of name to description
    coin @5 :UInt64;
    startTime @6 :UInt64;
}

struct Contest {
    contest @0 :UnsignedContest;
    signature @1 :Data;
}
