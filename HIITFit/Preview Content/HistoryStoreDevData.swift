

import Foundation

extension HistoryStore {
    mutating func createDevData() {
        // Dev data
        exerciseDays = [
            ExerciseDay(date: Date().addingTimeInterval(-84600),
                        exercises: [
                            Exercise.exercises[0].exerciseName,
                            Exercise.exercises[1].exerciseName,
                            Exercise.exercises[2].exerciseName
                        ]),
            ExerciseDay(date: Date().addingTimeInterval(-84600 * 2),
                        exercises: [
                            Exercise.exercises[0].exerciseName,
                            Exercise.exercises[1].exerciseName])
        ]
    }
}
