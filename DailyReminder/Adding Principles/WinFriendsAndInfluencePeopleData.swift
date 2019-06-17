//
//  WinFriendsAndInfluencePeopleData.swift
//  DailyReminder
//
//  Created by Michael Charland on 2019-03-24.
//  Copyright © 2019 charland. All rights reserved.
//

import Foundation

struct Data {
    var part:String
    var section:String
    var description:String
}

class WinFriendsAndInfluencePeopleData {
    
    class func getValues() -> [String: Data] {

        var result = [String: Data]()
        result = result.merging(partOne()) { $1 }
        result = result.merging(partTwo()) { $1 }
        result = result.merging(partThree()) { $1 }
        result = result.merging(partFour()) { $1 }
        result = result.merging(partSix()) { $1 }
        return result
    }

    class func partOne() -> [String: Data] {
        var result = [String: Data]()
        let part = "Part One: Fundamental Techniques in Handling People"
        var section = "Principle 1 – Don’t Criticize, Condemn or Complain"
        var description = "For most of us, it is easier to criticize, condemn or complain.  We’re not aware how these negative attitudes greatly affect not only our moods or feeling, but as well as our relationship with other people.  Whenever you feel like criticizing, complaining or condemning other people, remember this, If you want to gather honey, don’t kick over the beehive."
        result[section] = Data(part: part, section: section, description: description)

        section = "Principle 2 – Give Honest and Sincere Appreciation"
        description = "Another negative attitude that many people possess is to see the bad more than the good of another person.  One reason is that we often feel inferior on the abilities of other people that we tend to conceal it by appearing superior and degrading other people’s value.  Remember, the biggest desire of human nature is the desire to be important.  And that’s the big secret of dealing with people."
        result[section] = Data(part: part, section: section, description: description)

        section = "Principle 3 – Arouse in the Other Person an Eager Want"
        description = "Most people are self-centered and self-seeking.  Our world is full of these kinds.  But those rare individual who unselfishly tries to serve others has future in store for them and they have an enormous advantage.  Remember,  If there’s any one secret of success, it lies in the ability to get the other person’s point of view and see things from the other person’s point of view and see things from that person’s angle as well as from your own. ~ Henry Ford"
        result[section] = Data(part: part, section: section, description: description)
        return result
    }

    class func partTwo() -> [String: Data] {
        var result = [String: Data]()

        let part = "Part Two: Six Ways to Make People Like You"
        var section = "Principle 4 – Be Genuinely Interested in Other People"
        var description = "The key point in this principle is that you can make more friends in two months by becoming genuinely interested in other people than you can in two years by trying to get other people interested in you."
        result[section] = Data(part: part, section: section, description: description)

        section = "Principle 5 – Smile"
        description = "The expression one wears on one’s face is far more important than the clothes one wears on one’s back.  Remember that smile is worth a million dollars."
        result[section] = Data(part: part, section: section, description: description)

        section = "Principle 6 – Remember that a person’s name is to that person the sweetest and most important sound in any language"
        description = "We should be aware of the magic contained in a name and realize that this single item is wholly and completely owned by the person with whom we are dealing and nobody else."
        result[section] = Data(part: part, section: section, description: description)

        section = "Principle 7 – Be a good listener.  Encourage others to talk about themselves"
        description = "To be a good conversationalist, be an attentive listener.  To be interesting, be interested."
        result[section] = Data(part: part, section: section, description: description)

        section = "Principle 8 – Talk in terms of the other person’s interests"
        description = "The royal road to a person’s heart is to talk about the things he or she treasures most."
        result[section] = Data(part: part, section: section, description: description)

        section = "Principle 9 – Make the Other Person feel important – and do it sincerely"
        description = "Talk to people about themselves and they will listen for hours."
        result[section] = Data(part: part, section: section, description: description)
        return result
    }

    class func partThree() -> [String: Data] {
        var result = [String: Data]()

        let part = "Part Three: How to Win People to Your Way of Thinking"
        var section = "Principle 10 – The only way to get the best of an argument is to avoid it"
        var description = "Avoid arguments.  You can’t win an argument.  You can’t because if you lose it, you lose it and if you win it, you lose it.  Because a man convinced against his will is of the same opinion still."
        result[section] = Data(part: part, section: section, description: description)

        section = "Principle 11 – Show respect for the other person’s opinions.  Never say, “You’re wrong”"
        description = "Judge people by their own principles – not by your own.  Be diplomatic, it will help you gain your point."
        result[section] = Data(part: part, section: section, description: description)

        section = "Principle 12 – If you are wrong, admit it quickly and emphatically"
        description = "By fighting, you never get enough, but by yielding you get more than you expected."
        result[section] = Data(part: part, section: section, description: description)

        section = "Principle 13 – Begin in a friendly way"
        description = "A drop of honey catches more flies than a gallon of gall."
        result[section] = Data(part: part, section: section, description: description)

        section = "Principle 14 – Get the other person saying “yes, yes” immediately"
        description = "Don’t begin by discussing the things on which you differ, begin by emphasizing on the things on which you agree."
        result[section] = Data(part: part, section: section, description: description)

        section = "Principle 15 – Let the other person do a great deal of the talking"
        description = "Even our friends would rather talk to us about their achievements rather than listen to us boasting ours."
        result[section] = Data(part: part, section: section, description: description)

        section = "Principle 16 – Let the other people feel that the idea is his or hers"
        description = "Don’t think of the credit, think of the results.  Sometimes, it helps to let other people take the credit."
        result[section] = Data(part: part, section: section, description: description)

        section = "Principle 17 – Try honesty to see things from the other person’s point of view"
        description = "Success in dealing with people depends on a sympathetic grasp of the other person’s viewpoint."
        result[section] = Data(part: part, section: section, description: description)

        section = "Principle 18 – Be sympathetic with the other person’s ideas and desires"
        description = "Three-fourths of the people you will ever meet are hungering and thirsting for sympathy.  Give it to them, and they will love you."
        result[section] = Data(part: part, section: section, description: description)

        section = "Principle 19 – Appeal to the nobler motives"
        description = "A person usually has two reasons for doing a thing: one that sounds good and a real one.  In order to change people, appeal to the nobler motives."
        result[section] = Data(part: part, section: section, description: description)

        section = "Principle 20 – Dramatize your ideas"
        description = "This is the day of dramatization.  Merely stating a truth isn’t enough.  You have to use showmanship.  The movies do it, television does it. And you will have to do it if you want attention."
        result[section] = Data(part: part, section: section, description: description)

        section = "Principle 21 – Throw down a challenge"
        description = "The one major factor that motivated people was the work itself.  If the work was exciting and interesting, the worker looked forward to doing it and was motivated to do a good job."
        result[section] = Data(part: part, section: section, description: description)
        return result
    }

    class func partFour() -> [String: Data] {
        var result = [String: Data]()

        let part = "Part Four: How to Change People Without Giving Offense or Arousing Resentment"
        var section = "Principle 22 – Begin with praise and honest appreciation"
        var description = "It’s like the dentist who begins with his work Novocain.  The patient still gets a drilling, but the Novocain is pain-killing."
        result[section] = Data(part: part, section: section, description: description)

        section = "Principle 23 – Call attention to people’s mistakes indirectly"
        description = "Calling attention to one’s mistakes indirectly works wonders with sensitive people who may resent bitterly any direct criticism."
        result[section] = Data(part: part, section: section, description: description)

        section = "Principle 24 – Talk about your mistakes before criticizing the other person"
        description = "Admitting one’s own mistakes – even when one hasn’t corrected them – can help convince somebody to change his behavior."
        result[section] = Data(part: part, section: section, description: description)

        section = "Principle 25 – Ask questions instead of giving direct orders"
        description = "People are more likely to accept an order if they have had a part in the decision that caused the order to be issued."
        result[section] = Data(part: part, section: section, description: description)

        section = "Principle 26 – Let the other person save face"
        description = "No man has the right to say or do anything that diminishes a man in his own eyes."
        result[section] = Data(part: part, section: section, description: description)

        section = "Principle 27 – Be hearty in your approbation and lavish in your praise"
        description = "Abilities wither under criticism, they blossom under encouragement."
        result[section] = Data(part: part, section: section, description: description)

        section = "Principle 28 – Give the other person a fine reputation to live up to"
        description = "A small phrase can change an entire life.  If you want to improve a person in a certain aspect, act as though that particular trait were already one of his or her outstanding characteristics."
        result[section] = Data(part: part, section: section, description: description)

        section = "Principle 29 – Use encouragement. Make the fault seem easy to correct"
        description = "Give confidence, inspire with courage and faith."
        result[section] = Data(part: part, section: section, description: description)

        section = "Principle 30 – Make the other person happy about doing the thing you suggest"
        description = "Always make the other person happy about doing the thing you suggest."
        result[section] = Data(part: part, section: section, description: description)
        return result
    }

    class func partSix() -> [String: Data] {
        var result = [String: Data]()

        let part = "Part Six: Seven Rules For Making Your Home Life Happier"
        var section = "Principle 31 - Don’t nag."
        var description = "Many a partner has made there maritial grave with a series of little digs"
        result[section] = Data(part: part, section: section, description: description)

        section = "Principle 32 - Don’t try to make your partner over."
        description = "Success in marriage is much more than a matter of finding the right person; it is also a matter of being the right person"
        result[section] = Data(part: part, section: section, description: description)

        section = "Principle 33 - Don’t criticize."
        description = "This will only destroy the happiness of my marriage"
        result[section] = Data(part: part, section: section, description: description)

        section = "Principle 34 - Give honest appreciation."
        description = "Remember the short Father Forgets"
        result[section] = Data(part: part, section: section, description: description)

        section = "Principle 35 - Pay attention."
        description = """
        I shall pass this way but once; any good, therefore, that I can do or any kindness that I can show to any human being, let me do it now.
        Let me not defer nor neglect it for I shall not pass this way again.
        """
        result[section] = Data(part: part, section: section, description: description)

        section = "Principle 36 - Be courteous."
        description = "Rudeness is the cancer that devours love. Everyone knows this, yet it's notorious we are more polite to strangers than we are to our own relatives."
        result[section] = Data(part: part, section: section, description: description)

        section = "Principle 37 - Read a good book on the sexual side of marriage."
        description = "This will better help me work on my biases and behaviours that are negative in my marriage."
        result[section] = Data(part: part, section: section, description: description)

        return result
    }
}
