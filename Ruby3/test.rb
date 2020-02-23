module Characters
    CharacterName = "Kirameki"
end

class Characters::SelfIntroduction
    def initialize(name=Characters::CharacterName)
        puts "私の名前は#{name}と言います"
    end
end

newinstance = Characters::SelfIntroduction.new 