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
// @file finalTest.ned
// @date 21.10.2011
// @author: Tomas Prochazka (mailto:xproch21@stud.fit.vutbr.cz), Vladimir Vesely (mailto:ivesely@fit.vutbr.cz)
// @brief Topology with PIM network

package inet.examples.ansa.pimDMFinal;

import inet.ansa.networklayer.pim.PIMRouter;
import inet.ansa.nodes.inet.AnsaHost;
import inet.nodes.ethernet.Eth100M;
import inet.world.scenario.ScenarioManager;

network pimDMFinal
{
    @display("bgb=448,352");

    submodules:
        R1: PIMRouter {
            @display("p=208,125");
        }
        R2: PIMRouter {
            @display("p=126,216");
        }
        R3: PIMRouter {
            @display("p=285,216");
        }

        Source1: AnsaHost {
            @display("p=208,33");
        }
        Host1: AnsaHost {
            @display("p=41,216");
        }
        Source2: AnsaHost {
            @display("p=285,299");
        }

        Host2: AnsaHost {
            @display("p=126,299");
        }
        Host3: AnsaHost {
            @display("p=376,216");
        }
//        scenarioManager: ScenarioManager {
//            @display("p=376,26");
//            script = xmldoc("scenario.xml");
//        }
    connections allowunconnected:
        R1.ethg++ <--> Eth100M <--> R2.ethg++;
        R1.ethg++ <--> Eth100M <--> R3.ethg++;
        R1.ethg++ <--> Eth100M <--> Source1.ethg++;

        R2.ethg++ <--> Eth100M <--> Host1.ethg++;
        R2.ethg++ <--> Eth100M <--> Host2.ethg++;

        R3.ethg++ <--> Eth100M <--> Source2.ethg++;
        R3.ethg++ <--> Eth100M <--> Host3.ethg++;
}
