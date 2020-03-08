# Quiz Application

Flutter project: Basic Quiz application.

Traditionally the right answer choice will have '1' score and the wrond choices will have '0' score. This becomes easier for result calculation. But in cases where one needs to calculate the "range" of the final result. The application is versatile and can handle both scenarios easily.

main.dart File - Sample Question/Answer Structure with score.
{
      'questionText': 'Favourite Color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Blue', 'score': 9},
        {'text': 'Red', 'score': 8},
        {'text': 'Green', 'score': 7}
      ],
 }
 
 Accordingly calculate the result and display a message along with the score on the results page, refer "result.dart" file. 
