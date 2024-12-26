fetch('/grades.json')
    .then(response => response.json())
    .then(data => {
        console.log(data);
        renderGrades(data);
    })
    .catch(error => console.error('Error fetching grades', error));


function renderGrades(grades) {
    const gradesContainer = document.getElementById('grades-container')
    grades.foreach(grade => {
        const gradeElement = document.createElement('div')
        gradeElement.innerHTML = `
            <p>Teacher: ${grade.teacher_id}</p>
            <p>Student: ${grade.student_id}</p>
            <p>Subject: ${grade.subject_id}</p>
            <p>Score: ${grade.score}</p>
        `;
        gradesContainer.appendChild(gradeElement);
    });
}

const gradeData = {
    grade: {
        teacher_id: 1,
        student_id: 2,
        subject_id: 3,
        score: 95
    }
};

fetch( '/grades.json', {
    method: 'Post',
    headers: {
        'Content-type': 'application/json',
        'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').content
    }, 
    body: JSON.stringify(gradeData)

    .then(response => response.json())
    .then(data => {
        console.log('Grade created:', data)
    })
    .catch(error => {
        error => console.error("Error creating grade: ", error)
    })
})