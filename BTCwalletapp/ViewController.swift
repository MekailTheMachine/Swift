//
//  ViewController.swift
//  BTCwalletapp
//
//  Created by Connor Murphy on 9/10/19.
//  Copyright © 2019 Connor Murphy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let button = UIButton()
    let label = UILabel()
    var wif = String()
    var address = String()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // here is where the controller is now loaded
        
        
       if let key = BTCKey.init() {
        print("key = \(String(describing: key))")
        
        //using core bitcoin library we created a key
        
        key.isPublicKeyCompressed = true
        
        //"This ^ will give us a different private key."
        
            wif = key.wif
        
        //wallet import format
            address = (key.address).string
        
        print("wif = \(String(describing: wif))")
        print("address = \(String(describing: address))")
        
        //we have a bitcoin wallet now, we can send BTC to this address, and can spend them with this private key
        
        // Under this comment we will be creating our label through code rather through our storyboard
   
        label.frame = CGRect(x:50, y: view.frame.height / 6, width: view.frame.width - 100, height: 30)
        label.textAlignment = .center
        label.font = UIFont.init(name: "Montserrat", size: 16)
        label.textColor = UIColor.black
        label.text = wif
        view.addSubview(label)
        label.adjustsFontSizeToFitWidth = true
        //  Now to represen to the buttons
        button.frame = CGRect(x: view.center.x - 50, y: 100, width: 100, height: 50)
        button.setTitle("Toggle", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.addTarget(self, action: #selector(self.toggle), for: .touchUpInside)
        view.addSubview(button)
       }
        
    }
    
    @objc func toggle() {
        if label.text == self.wif {
            label.text = "Your address is: \(self.address)"
        } else {
            label.text = self.wif
        }
}
}


// Still need to implement APIs and more. I was planning on centrazling the software to be a social media platform, with the second hand abilities to provide for new political and economical infrastructure, and a structure that allows for easy spotting of corruption within the tax system. That appeared to be one of the largest things holding humanity back. I think BTC is great when it comes to governmental duties, paying dividens to sectors, tracking such, etc.. That may be more realistic to orignally empoly, but i enjoy the idea of also creating a community based back bone, that gives people more freedom and choice of where their tax money goes, it allows for people to be more apart of their enviorment, and encourages more people to take part in politics, and it also puts a pressure on the elites and people of highers status to take more responsibility for their fellow humans in keeping them educated, and not using them as tools in a political agenda, but having them activley participate. One worry was that many american's aren't intelegent enough to be able to choose where their money goes, even with a platform thats provides data on what platform is being underfunded and over funded, what sector will use the money for. Will their be a sector to manage all sectors in general? But with the fear that all american's wont place their money wisely, it's time we face that fear, and challenge the common notion that the general public is stupid. The public should be aware of what is happening and what is going on in the world, and gov. officals and elitist need to take more responsibility in educating and including everyone's voice. If we make everyones voice matter, then people will have to beging to care more for their fellow citizens more as well, because that will impact their lives.

// the overall goal is to also create a platform that allows communities to fund important things like fire deps. police, etc.. without a central authority, so if government fails society, there is a back up / a way to continue funding their community. They can already fund it in that way off the platform hopefully, basically providing a decntralized form of government, voting, they can rate and vote public / private sectors to earn ARCC even by participating. I think the basis of this idea, and employing it, is key to advancing society, and human civilation. If we want to battle and face the astronomical problems we may face ahead of us, then we must first focus on building foundation that helps us focus and direct that. While global warming, and other issues are present, I believe by focusing on corruption first, we then have more area and room to actually focus and tackle the larger problems that lay ahead.

// This also makes it easier for the department of revenure and IRS, as well as tracking taxation, 90% of these duties can be automated, and can be tracked on the blockchain.

// I like the AARC structure from what i understand so far, but from my understanding in which isn't fully detailed so may lack knowledge, i feel the platform lacks political structure, and an easy way to integrate society into using this platform. Perhaps I have just not read a simplified version, but it seems very complex and compicated and for every oridanary citizen with little knowledge to get on board, they must understand how and why it works, and that must be portrayed very simply. Can the platform help individuals and buisnesses track their income, spending ,etc.. creating the code so others can build on top of it is cruicial.

// going from uPort to IBMR, is there any tech in place to track individual spending, say a citizen wants to look up a specific wallet, like Cincinatti police, and want's to see all related spendings. Is there a platform that can represent their public key with a public I.D, and where in they can browse the blockchain, collect, and organize data on that wallet, view the wallets it has interacted with etc..

//another idea, is keeping identity private, one way to do that while still ensuring honesty within taxes, is stroing data on specific companies, and wallets on the blockchain, and only granting permission / sharing that with say the IRS or deparment of revenue.
// is the encryption we are using today strong enough to support this? What will happen when Shor's algorithm can be implemented, and how will this affect the future when encryption gets cracked? (Also something to worry about moreso down the road. It can be too hard to say this early on exactly how that may affect everything, but the system presented seems a whole lot better than what we have now, and if people discover flaws or think of something better, at least than they now have reason to pursue better infrastructure, although it shouldn't be a competition amongst people but a collaboration.

// Notes from 2019
