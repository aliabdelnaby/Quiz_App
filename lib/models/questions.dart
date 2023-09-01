class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({
    required this.id,
    required this.question,
    required this.answer,
    required this.options,
  });
}

const List questionData = [
  {
    "id": 1,
    "question":
        "Which programming language is known for its use in web development?",
    "options": ['Java', 'Python', 'JavaScript', ' C++'],
    "answer_index": 2,
  },
  {
    "id": 2,
    "question": "What does HTML stand for?",
    "options": ['Hyperlinks Markup Language', 'Hypertext Markup Language', 'High-Level Markup Language', 'Home Tool Markup Language'],
    "answer_index": 1,
  },
  {
    "id": 3,
    "question": "What is the largest planet in our solar system?",
    "options": ['Mars', 'Jupiter', 'Earth', 'Saturn'],
    "answer_index": 1,
  },
  {
    "id": 4,
    "question": "Which of the following is a primary color?",
    "options": ['Orange', 'Green', 'Yellow', 'Purple'],
    "answer_index": 2,
  },
  {
    "id": 5,
    "question": "What is the chemical symbol for gold?",
    "options": ['Au', 'Ag', 'Fe', 'Cu'],
    "answer_index": 0,
  },
  {
    "id": 6,
    "question": "Who painted the Mona Lisa?",
    "options": ['Pablo Picasso', 'Leonardo da Vinci', 'Vincent van Gogh', 'Michelangelo'],
    "answer_index": 1,
  },
  {
    "id": 7,
    "question": "What is the capital city of Australia?",
    "options": ['Sydney', 'Melbourne', 'Canberra', 'Brisbane'],
    "answer_index": 2,
  },
  {
    "id": 8,
    "question": "What is the symbol for the element oxygen?",
    "options": ['O', 'Ox', 'Om', 'Oc'],
    "answer_index": 0,
  },
  {
    "id": 9,
    "question": "Which country is home to the Eiffel Tower?",
    "options": ['Italy', 'Germany', 'France', 'Spain'],
    "answer_index": 2,
  },
  {
    "id": 10,
    "question": "Which animal is known as the 'king of the jungle'?",
    "options": ['Lion', 'Tiger', 'Elephant', 'Giraffe'],
    "answer_index": 0,
  },
];
