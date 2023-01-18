stack Trivia75Stack, interaction_timeout: 120 do

  card Init, then: FollowUp do
    answer = ask("""
    Tell me something interesting?
    """)
  end

  card FollowUp, then: ScaryStory do
    text("""
    I can tell you something scary. :P
    """)
  end

  card ScaryStory, then: ScaryStoryFallback do
    buttons([Ewww, Scary]) do
      text("""
      A cockroach can live for several days after its head it cut off.
      """)
    end
  end

  card ScaryStoryFallback, then: ScaryStory do
    text("""
    Please select a valid option
    """)
  end

  card Ewww, "Ewww!", then: Question do
    text("""
    That's okay, I still think of you as my friend. :)
    """)
  end

  card Scary, "Scary!", then: Question do
    text("""
    I know. I'm scared of cockroaches too. The only thing that scares me more than a headless cockroach is a flying cockroach (yes, they exist)!
    """)
  end

  card Question, then: Answer do
    answer = ask("""
    Why do you think cockroaches don't die even after their heads are cut off?
    """)
  end

  card Answer, then: Math do
    text("""
    It's because cockroaches don't breathe through their heads like humans and many other living creatures. They breathe through little holes in their bodies.
    """)
  end

  card Math, then: MathFallback do
    buttons([Ready, Okay]) do
      text("""
      I don't want to think of cockroaches. :P  Let's distract ourselves with math now.
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
