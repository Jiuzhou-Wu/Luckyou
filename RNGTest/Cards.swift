//
//  Cards.swift
//  RNGTest
//
//  Created by RideShark on 2018-01-25.
//  Copyright © 2018 RideShark. All rights reserved.
//

import Foundation

class Cards {
    func numToCard(id: Int) -> String {
        //assign card to each id
        switch id {
        case 0...9:
            return "11-1"
        case 10...59:
            return "10-21"
        case 60...99:
            return "10-22"
        case 100...149:
            return "10-1"
        case 150...199:
            return "10-2"
        case 200...209:
            return "10-22"
        case 210...423:
            return "9-1"
        case 424...637:
            return "9-2"
        case 638...851:
            return "9-3"
        case 852...999:
            return "9-4"
            
        case 1000...1009:
            return "11-2"
        case 1010...1099:
            return "9-40"
        case 1100...1149:
            return "10-3"
        case 1150...1199:
            return "10-4"
        case 1200...1265:
            return "9-4"
        case 1266...1479:
            return "9-5"
        case 1480...1693:
            return "9-6"
        case 1694...1907:
            return "9-7"
        case 1908...1999:
            return "9-8"
            
        case 2000...2009:
            return "11-3"
        case 2010...2063:
            return "9-40"
        case 2064...2099:
            return "9-41"
        case 2100...2149:
            return "10-5"
        case 2150...2199:
            return "10-6"
        case 2200...2321:
            return "9-9"
        case 2322...2535:
            return "9-10"
        case 2536...2749:
            return "9-11"
        case 2750...2963:
            return "9-12"
        case 2964...2999:
            return "9-13"
            
        case 3000...3009:
            return "11-4"
        case 3010...3099:
            return "9-41"
        case 3100...3149:
            return "10-7"
        case 3150...3199:
            return "10-8"
        case 3200...3377:
            return "9-14"
        case 3378...3591:
            return "9-15"
        case 3592...3805:
            return "9-16"
        case 3806...3999:
            return "9-17"
            
        case 4000...4009:
            return "11-5"
        case 4010...4099:
            return "9-41"
        case 4100...4149:
            return "10-9"
        case 4150...4199:
            return "10-10"
        case 4200...4219:
            return "9-17"
        case 4220...4433:
            return "9-18"
        case 4434...4647:
            return "9-19"
        case 4648...4861:
            return "9-20"
        case 4862...4999:
            return "9-21"
            
        case 5000...5009:
            return "11-6"
        case 5010...5020:
            return "9-41"
        case 5021...5059:
            return "9-1"
        case 5060...5099:
            return "9-2"
        case 5100...5149:
            return "10-11"
        case 5150...5199:
            return "10-12"
        case 5200...5276:
            return "9-21"
        case 5277...5490:
            return "9-22"
        case 5491...5704:
            return "9-23"
        case 5705...5918:
            return "9-24"
        case 5919...5999:
            return "9-25"
            
        case 6000...6009:
            return "11-7"
        case 6010...6030:
            return "9-3"
        case 6031...6071:
            return "9-4"
        case 6072...6099:
            return "9-5"
        case 6100...6149:
            return "10-13"
        case 6150...6199:
            return "10-14"
        case 6200...6332:
            return "9-25"
        case 6333...6546:
            return "9-26"
        case 6547...6760:
            return "9-27"
        case 6761...6974:
            return "9-28"
        case 6975...6999:
            return "9-29"
            
        case 7000...7009:
            return "11-8"
        case 7010...7025:
            return "9-6"
        case 7026...7051:
            return "9-7"
        case 7052...7075:
            return "9-8"
        case 7076...7099:
            return "9-9"
        case 7100...7149:
            return "10-15"
        case 7150...7199:
            return "10-16"
        case 7200...7388:
            return "9-29"
        case 7389...7602:
            return "9-30"
        case 7603...7816:
            return "9-31"
        case 7817...7999:
            return "9-32"
            
            
        case 8000...8009:
            return "11-9"
        case 8010...8011:
            return "9-10"
        case 8012...8022:
            return "9-11"
        case 8023...8034:
            return "9-12"
        case 8035...8067:
            return "9-13"
        case 8068...8099:
            return "9-14"
        case 8100...8149:
            return "10-17"
        case 8150...8199:
            return "10-18"
        case 8200...8231:
            return "9-32"
        case 8232...8445:
            return "9-33"
        case 8446...8659:
            return "9-34"
        case 8660...8873:
            return "9-35"
        case 8874...8999:
            return "9-36"
            
        case 9000...9009:
            return "11-10"
        case 9010...9040:
            return "9-15"
        case 9041...9071:
            return "9-16"
        case 9072...9099:
            return "9-17"
        case 9100...9149:
            return "10-19"
        case 9150...9199:
            return "10-20"
        case 9200...9287:
            return "9-36"
        case 9288...9501:
            return "9-37"
        case 9502...9715:
            return "9-38"
        case 9716...9929:
            return "9-39"
        case 9930...9999:
            return "9-40"
            
        default:
            return "9-29"
        }
    }
}
