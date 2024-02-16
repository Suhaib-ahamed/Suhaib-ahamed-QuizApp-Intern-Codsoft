class QuizQuestions{
String question;
List<String> answers;
String correctanswer;

QuizQuestions({required this.question,required this.answers,required this.correctanswer});

}

List<QuizQuestions> quizQuestions = [
  QuizQuestions(question: "Question: What is the smallest prime number?",
      answers:["0","1","2","3"],
      correctanswer: "2"),
  QuizQuestions(question: "Question: In which year was the Declaration of Independence signed?",
      answers: ["1776","1783","1800","1812"],
      correctanswer: "1776"),
  QuizQuestions(question: "Question: What is the boiling point of water at sea level (in Celsius)?",
      answers: ["50","75","100","125"],
      correctanswer: "100"),
  QuizQuestions(question: "Question: Who painted the Mona Lisa?",
      answers: ["Vincent Van Gogh","Pablo Picasso","Leonardo da Vinci","Michelangelo"],
      correctanswer: "Leonardo da Vinci"),
  QuizQuestions(question: "Question: What is the square root of 144?",
      answers: ["10","11","12","13"],
      correctanswer: "12"),
  QuizQuestions(question: "Question: What is the largest continent by land area?",
      answers: ["Africa","Asia","Europe","North America"],
      correctanswer: "Asia"),
  QuizQuestions(question: 'Question: Who is known as the "Father of Computer Science"?',
      answers: ["Isaac Newton","Albert Einstein","Alan Turing","Charles Babbage"],
      correctanswer: "Alan Turing"),
  QuizQuestions(question: "Question: What is the speed of light in vacuum (approximately)?",
      answers: ["3,000 m/s","30,000 m/s","300,000 m/s","3,000,000 m/s"],
      correctanswer: "300,000 m/s"),
  QuizQuestions(question: 'Question: Who wrote the play "Romeo and Juliet"?',
      answers: ["Charles Dickens","William Shakespeare","George Bernard Shaw","Oscar Wilde"],
      correctanswer: "William Shakespeare"),
  QuizQuestions(question: "Question: What is the primary gas found in the Earth's atmosphere?",
      answers: ["Oxygen","Carbon Dioxide","Nitrogen","Hydrogen"],
      correctanswer: "Nitrogen"),

];
