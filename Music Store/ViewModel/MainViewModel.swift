//
//  MainViewModel.swift
//  Music Store
//
//  Created by  Arthur Bodrov on 20/04/2019.
//  Copyright © 2019  Arthur Bodrov. All rights reserved.
//

import UIKit

class MainViewModel: MainViewModelType {
    
    func sortByNameFromAtoZ() {
        albums.sort(by: { $0.name < $1.name } )
    }
    
    func sortByNameFromZtoA() {
        albums.sort(by: { $0.name > $1.name } )
    }
    
    func sortByPriceFromLowToHigh() {
        albums.sort(by: { $0.price < $1.price } )
    }
    
    func sortByPriceFromHighToLow() {
        albums.sort(by: { $0.price > $1.price } )
    }

    func sortByReleaseDateFromNewToOld() {
        albums.sort(by: { $0.releaseDate < $1.releaseDate } )
    }
    
    func sortByReleaseDateFromOldtoNew() {
        albums.sort(by: { $0.releaseDate > $1.releaseDate } )
    }
    
    
    private var selectedIndexPath: IndexPath?
    
    var albums: [Album] = [
        Album(name: "Fly me to the Moon", price: 20, artist: "Questa noche", image: "Fly", releaseDate: 2018, label: "Warner", description: """
    I came from a family where my people didn't like rhythm & blues," Little Richard told Rolling Stone in 1970. "Bing Crosby, 'Pennies From Heaven,' Ella Fitzgerald was all I heard. And I knew there was something that could be louder than that, but didn't know where to find it. And I found it was me." Richard's raucous 1957 debut album collected singles such as "Rip It Up" and "Long Tall Sally," in which his rollicking boogie-­woogie piano and falsetto scream ignited the unfettered possibilities of rock & roll. "Tutti Frutti" still contains what has to be considered the most inspired rock lyric ever recorded: "A wop bop alu bop, a wop bam boom!
    """),
        Album(name: "Los Pamperos muchachos", price: 19, artist: "Questa noche", image: "Los", releaseDate: 2017, label: "Warner", description: """
    "I think every album was a step toward Dark Side of the Moon," keyboardist Rick Wright said. "We were learning all the time; the techniques of the recording and our writing was getting better." As a culmination of their inner-space explorations of the early 1970s, the Floyd toured the bulk of Dark Side in Britain for months prior to recording. But in the studio, the band articulated bassist Roger Waters' reveries on the madness of everyday life with melodic precision ("Breathe," "Us and Them") and cinematic luster (Clare Torry's guest-vocal aria, "The Great Gig in the Sky"). It's one of the best-produced rock albums ever, and "Money" may be the only Top 20 hit in 7/4 time.
    """),
        Album(name: "Q42 - Piano intense", price: 25, artist: "Questa noche", image: "Q42", releaseDate: 2018, label: "Barron", description: """
    After blowing minds as the house band at L.A.'s Whisky-a-Go-Go, where they got fired for playing the Oedipal drama "The End," the Doors were ready to unleash their organ-driven rock on the world. "On each song we had tried every possible arrangement," drummer John Densmore said, "so we felt the whole album was tight." The Blakean pop art on their debut was beyond Top 40 attention spans. But they hit pay dirt by editing down one of their jams: "Light My Fire," written by guitarist Robbie Krieger when Jim Morrison told everybody in the band to write a song with universal imagery.
    """),
        Album(name: "Storms in the middle of", price: 20, artist: "Andrea Casco", image: "Storm", releaseDate: 2019, label: "Naggoli", description: """
"You want to know how good the blues can get?" Keith Richards asked. "Well, this is it." The bluesman in question was Robert Johnson, who lived from 1911 to 1938 in the Mississippi Delta, and whose guitar prowess was so great, it inspired stories that he had sold his soul to the devil in exchange for his amazing gift. In his only two recording sessions, Johnson cut just 29 songs, but their evanescent passion has resonated through the decades, crucial inspiration for everyone from Chicago blues originator Elmore James to British blues inheritors like the Stones and Eric Clapton. Every one of his songs (along with 12 alternate takes) is included here – a holy grail of the blues.
"""),
        Album(name: "Violin Classics No. 1", price: 25, artist: "Antonio", image: "Violin", releaseDate: 2016, label: "Worker", description: """
"In 1969 or 1970, I began to re-evaluate my whole concept of what I wanted my music to say," Marvin Gaye said. "I was very much affected by letters my brother was sending me from Vietnam, as well as the social situation here at home. I realized that I had to put my own fantasies behind me if I wanted to write songs that would reach the souls of people. I wanted them to take a look at what was happening in the world." The masterpiece that followed Gaye's awakening revolutionized black music. From its rich, string-suffused grooves to its boundless sense of possibility, What's Going On is the Sgt. Pepper of soul.
"""),
        Album(name: "Violin Classics No. 2", price: 20, artist: "Antonio", image: "Violin2", releaseDate: 2014, label: "Whicher", description: """
On their first album, Led Zeppelin were still in the process of inventing their own sound, moving on from the heavy rave-ups of guitarist Jimmy Page's previous band, the Yardbirds. But from the beginning, Zeppelin had the astonishing fusion of Page's lyrical guitar-playing, Robert Plant's paint-peeling love-hound yowl, and John Paul Jones and John Bonham's avalanche boogie. "We were learning what got us off most and what got people off most," said Plant. Yet the template for everything Zeppelin achieved in the 1970s is here: brutal rock ("Communication Breakdown"), thundering power balladry ("Your Time Is Gonna Come"), acid-flavored folk blues ("Babe I'm Gonna Leave You"). Heavy metal still lives in its shadow.
""")
    ]
    
    func numberOfItems() -> Int {
        return albums.count
    }
    
    func cellViewModel(atIndexPath indexPath: IndexPath) -> CollectionCellViewModelType? {
        let album = albums[indexPath.row]
        
        return CollectionCellViewModel(album: album)
    }
    
    func detailViewForSelectItem() -> DetailViewModelType? {
        guard let selectedIndexPath = selectedIndexPath else { return nil }
        return DetailViewModel(album: albums[selectedIndexPath.row])
    }
    
    
    func selectItem(atIndexPath indexPath: IndexPath) {
        self.selectedIndexPath = indexPath
    }
    
    func hiddenButton(_ shape: UIImageView, _ button: UIButton, _ color: String){
        shape.isHidden = true
        button.setImage(UIImage(named: color), for: .normal)
    }
    
    func showButton(_  shape: UIImageView, _ button: UIButton, _ color: String) {
        shape.isHidden = false
        button.setImage(UIImage(named: color), for: .normal)
    }
    
}
