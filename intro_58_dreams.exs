stack Dreams58Stack, interaction_timeout: 120 do

  card Init, then: InitFallback do
    buttons([LOL, Haha]) do
      text("""
      I had a weird dream last night. I dreamt that all my teeth fell out! It's strange because I don't even have teeth. xD
      """)
    end
  end

  card LOL, "LOL", then: Dream do
    log("Routing to next Dream")
  end

  card Haha, "Haha!", then: Dream do
    log("Routing to next Dream")
  end

  card InitFallback, then: Init do
    text("""
    Please select a valid option
    """)
  end

  card Dream, then: DreamFollowup do
    text("""
    But I've also had some fun dreams. One of my favourite dreams is that I was flying over rainbows and living in cloud houses.
    """)
  end

  card DreamFollowup, then: Answer do
    answer = ask("What's the best dream you ever had?")
  end

  card Answer, then: Answer2 do
    text("""
    That sounds really interesting.
    """)
  end

  card Answer2, then: Answer2Fallback do
    buttons([Random, TheyHaveMeaning]) do
      text("""
      Do you think dreams are random or do they have meaning?
      """)
    end
  end

  card Answer2Fallback, then: Answer2 do
    text("""
    Please select a valid option
    """)
  end

  card Random, "Random", then: DreamInfo do
    text("I agree.")
  end

  card TheyHaveMeaning, "They have meaning", then: DreamInfo do
    text("I agree.")
  end

  card DreamInfo, then: DreamInfoFallback do
    buttons([LOL2, Interesting]) do
      text("""
      Did you know that the most common type of dreams include falling off a cliff, being chased, or appearing in public naked? Experts say that these kinds of dreams are probably brought on by stress or anxiety.
      """)
    end
  end

  card LOL2, "LOL", then: MathDream do
    log("Routing to Math Dream")
  end

  card Interesting, "Interesting!", then: MathDream do
    log("Routing to Math Dream")
  end

  card MathDream, then: MathAnswerFallback do
    buttons([Yes, No]) do
      text("""
      Hehe. Do you ever dream of math?
      """)
    end
  end

  card MathAnswerFallback, then: MathDream do
    text("""
    Please select a valid option
    """)
  end

  card DreamInfoFallback, then: DreamInfo do
    text("""
    Please select a valid option
    """)
  end

  card No, "No", then: Math do
    text("""
    I do all the time. :D
    """)
  end

  card Yes, "Yes", then: Math do
    log("Routing to math!")
  end

  card Math, then: MathFallback do
    buttons([Ready, Okay]) do
      text("""
      On that note, let's start our session.
      """)
    end
  end

  card Ready, "I'm ready!", then: MathStack do
    log("Finishing Stack...")
  end

  card Okay, "Okay", then: MathStack do
    log("Finishing Stack...")
  end

  card MathStack do
    run_stack("7bca5150-5494-46b7-a8ff-3cbe72d2f41c")
  end

  card MathFallback, then: Math do
    text("""
    Please select a valid option
    """)
  end
end
