package _000_helloworld.simulations;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.AdhocHost;
//import inet.node.ethernet.Eth100M;
import inet.physicallayer.wireless.common.contract.packetlevel.IRadioMedium;


@license(LGPL);
//
// TODO documentation
//
network trafficGenerator
{
    parameters:
        //int totalTraffic;
        //string packetSize;
        
        //@figure[rcvdPkText1](type=indicatorText; pos=180,40; anchor=w; font=,12; textFormat="packets received in hostB: %g"; initialValue=0);
        //@statistic[packetReceived](source=hostB.app[0].packetReceived; record=figure(count); targetFigure=rcvdPkText1);
        
        //@figure[rcvdPkText2](type=indicatorText; pos=180,20; anchor=w; font=,12; textFormat="packets received in hostA: %g"; initialValue=0);
        //@statistic[packetReceived](source=hostA.app[1].packetReceived; record=figure(count); targetFigure=rcvdPkText2);
    submodules:
        hostA: AdhocHost {
            parameters:
            	@display("p=100,150");
            	//numWlanInterfaces = 2;
        }
        hostB: AdhocHost {
            parameters:
            	@display("p=400,150");
        }
        configurator: Ipv4NetworkConfigurator {
            parameters:
           	 @display("p=100,100;is=s");
            //config = xml("<config><interface hosts='*' address='145.236.x.x' netmask='255.255.0.0'/></config>");
        }
         radioMedium: <default("UnitDiskRadioMedium")> like IRadioMedium {
            parameters:
                @display("p=100,200;is=s");
        }

    connections:
}

