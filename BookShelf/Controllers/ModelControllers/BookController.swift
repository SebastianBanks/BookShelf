//
//  BookController.swift
//  BookShelf
//
//  Created by Sebastian Banks on 3/18/22.
//

import Foundation

class BookController {
    
    static var library: [Book] {
        let theAlchemist = Book(
            title: "The Alchemist",
            author: "Paulo Coelho",
            cover: "theAlchemist",
            releaseYear: 1988,
            desc: "Paulo Coelho's enchanting novel has inspired a devoted following around the world. This story, dazzling in its powerful simplicity and soul-stirring wisdom, is about an Andalusian shepherd boy named Santiago, who travels from his homeland in Spain to the Egyptian desert in search of a treasure buried near the Pyramids. Along the way he meets a Romany woman, a man who calls himself a king, and an alchemist, all of whom point Santiago in the right direction for his quest. No one knows what the treasure is, or whether Santiago will be able to surmount the obstacles in his path; but what starts out as a journey to find worldly goods turns into a discovery of treasure within. Lush, evocative, and deeply humane, the story of Santiago is an eternal testament to the transforming power of our dreams and the importance of listening to our hearts."
        )
        
        let artOfWar = Book(
            title: "The Art of War",
            author: "Sun Tzu",
            cover: "artOfWar",
            releaseYear: -500,
            desc: "Twenty-Five Hundred years ago, Sun Tzu wrote this classic book of military strategy based on Chinese warfare and military thought. Since that time, all levels of military have used the teaching on Sun Tzu to warfare and civilization have adapted these teachings for use in politics, business and everyday life. The Art of War is a book which should be used to gain advantage of opponents in the boardroom and battlefield alike."
        )
        
        let toKillAMockingbird = Book(
            title: "To Kill a Mockingbird",
            author: "Harper Lee",
            cover: "mockingbird",
            releaseYear: 1960,
            desc: "The unforgettable novel of a childhood in a sleepy Southern town and the crisis of conscience that rocked it. \("To Kill A Mockingbird") became both an instant bestseller and a critical success when it was first published in 1960. It went on to win the Pulitzer Prize in 1961 and was later made into an Academy Award-winning film, also a classic. Compassionate, dramatic, and deeply moving, \("To Kill A Mockingbird") takes readers to the roots of human behavior - to innocence and experience, kindness and cruelty, love and hatred, humor and pathos. Now with over 18 million copies in print and translated into forty languages, this regional story by a young Alabama woman claims universal appeal. Harper Lee always considered her book to be a simple love story. Today it is regarded as a masterpiece of American literature."
        )
        
        let theGreatGatsby = Book(
            title: "The Great Gatsby",
            author: "Scott Fitzgerald",
            cover: "greatGatsby",
            releaseYear: 1925,
            desc: "The Great Gatsby, F. Scott Fitzgerald's third book, stands as the supreme achievement of his career. This exemplary novel of the Jazz Age has been acclaimed by generations of readers. The story is of the fabulously wealthy Jay Gatsby and his new love for the beautiful Daisy Buchanan, of lavish parties on Long Island at a time when The New York Times noted \("gin was the national drink and sex the national obsession,") it is an exquisitely crafted tale of America in the 1920s."
        )
        
        let lordOfTheFlies = Book(
            title: "Lord of the Flies",
            author: "William Golding",
            cover: "lordOfFlies",
            releaseYear: 1954,
            desc: "At the dawn of the next world war, a plane crashes on an uncharted island, stranding a group of schoolboys. At first, with no adult supervision, their freedom is something to celebrate; this far from civilization the boys can do anything they want. Anything. They attempt to forge their own society, failing, however, in the face of terror, sin and evil. And as order collapses, as strange howls echo in the night, as terror begins its reign, the hope of adventure seems as far from reality as the hope of being rescued. Labeled a parable, an allegory, a myth, a morality tale, a parody, a political treatise, even a vision of the apocalypse, Lord of the Flies is perhaps our most memorable novel about \("the end of innocence, the darkness of man’s heart.")"
        )
        
        return [theAlchemist, artOfWar, toKillAMockingbird, theGreatGatsby, lordOfTheFlies]
    }
}
