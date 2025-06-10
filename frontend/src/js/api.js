const API_BASE_URL = 'http://localhost:8080/api'; // Adjust the base URL as needed

// User API
async function registerUser(userData) {
    const response = await fetch(`${API_BASE_URL}/register`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify(userData),
    });
    return response.json();
}

async function loginUser(credentials) {
    const response = await fetch(`${API_BASE_URL}/login`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify(credentials),
    });
    return response.json();
}

// Car API
async function getCars(filters) {
    const query = new URLSearchParams(filters).toString();
    const response = await fetch(`${API_BASE_URL}/cars?${query}`);
    return response.json();
}

async function addCar(carData) {
    const response = await fetch(`${API_BASE_URL}/cars`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
            'Authorization': `Bearer ${localStorage.getItem('token')}`, // Assuming token is stored in localStorage
        },
        body: JSON.stringify(carData),
    });
    return response.json();
}

async function editCar(carId, carData) {
    const response = await fetch(`${API_BASE_URL}/cars/${carId}`, {
        method: 'PUT',
        headers: {
            'Content-Type': 'application/json',
            'Authorization': `Bearer ${localStorage.getItem('token')}`,
        },
        body: JSON.stringify(carData),
    });
    return response.json();
}

async function deleteCar(carId) {
    const response = await fetch(`${API_BASE_URL}/cars/${carId}`, {
        method: 'DELETE',
        headers: {
            'Authorization': `Bearer ${localStorage.getItem('token')}`,
        },
    });
    return response.json();
}

// Message API
async function sendMessage(messageData) {
    const response = await fetch(`${API_BASE_URL}/messages`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
            'Authorization': `Bearer ${localStorage.getItem('token')}`,
        },
        body: JSON.stringify(messageData),
    });
    return response.json();
}

async function getMessages(userId) {
    const response = await fetch(`${API_BASE_URL}/messages/${userId}`, {
        headers: {
            'Authorization': `Bearer ${localStorage.getItem('token')}`,
        },
    });
    return response.json();
}

// Subscription API
async function subscribe(subscriptionData) {
    const response = await fetch(`${API_BASE_URL}/subscriptions`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
            'Authorization': `Bearer ${localStorage.getItem('token')}`,
        },
        body: JSON.stringify(subscriptionData),
    });
    return response.json();
}

// Saved Cars API
async function saveCar(carId) {
    const response = await fetch(`${API_BASE_URL}/saved-cars`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
            'Authorization': `Bearer ${localStorage.getItem('token')}`,
        },
        body: JSON.stringify({ carId }),
    });
    return response.json();
}

async function getSavedCars() {
    const response = await fetch(`${API_BASE_URL}/saved-cars`, {
        headers: {
            'Authorization': `Bearer ${localStorage.getItem('token')}`,
        },
    });
    return response.json();
}

// Exporting functions for use in other modules
export {
    registerUser,
    loginUser,
    getCars,
    addCar,
    editCar,
    deleteCar,
    sendMessage,
    getMessages,
    subscribe,
    saveCar,
    getSavedCars,
};