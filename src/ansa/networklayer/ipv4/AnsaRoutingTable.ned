// Copyright (C) 2013 Brno University of Technology (http://nes.fit.vutbr.cz/ansa)
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
//
// @file AnsaRoutingTable.ned
// @date 25.1.2013
// @author Tomas Prochazka (mailto:xproch21@stud.fit.vutbr.cz), Vladimir Vesely (mailto:ivesely@fit.vutbr.cz)
// @brief Inherited module for RoutingTable
// @details Simple module for AnsaRouting table

package inet.ansa.networklayer.ipv4;

simple AnsaRoutingTable
{
    parameters:
        string routerId = default("auto"); // for routers, the router id using IPv4 address dotted
                          // notation; specify "auto" to select the highest
                          // interface address; should be left empty ("") for hosts
        bool IPForward = default(true);  // turns IP forwarding on/off
        bool forwardMulticast = default(false); // turns multicast forwarding on/off
        string configFile = default("");  // routing table file name
        @display("i=block/table");
}