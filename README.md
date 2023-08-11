# Dev-Hostels Backend

Welcome to the backend repository of the Dev-Hostels web application. This backend component is built using Ruby on Rails and serves as the API for handling various functionalities such as user authentication, hostel management, reservations, reviews, and more.

## Features

- User Authentication: Implement user registration, login, and token-based authentication.
- Hostel Management: Allow hostel owners to list their properties and manage them.
- Reservations: Handle reservation creation and management.
- Reviews: Manage user reviews and ratings for hostels.
- Database: Utilize PostgreSQL for data storage.

## Prerequisites

- Ruby: >= 2.7.0
- Rails: >= 6.1.0
- PostgreSQL: >= 12.0

## Setup Instructions

1. Clone the repository:

```sh
git clone <repository_url>
cd <repository_directory>
```

2. Install dependencies:

```sh
bundle install
```

3. Set up the database:

```sh
# Run database migrations
rails db:create
rails db:migrate
```

4. Run the server:

```sh
rails server
```

The backend API will be accessible at `http://localhost:3000`.

## API Endpoints

The following are some of the key API endpoints provided by this backend:

- `GET /users`: Fetch a list of users.
- `POST /users`: Create a new user.
- `POST /auth/login`: User login and authentication.
- `GET /hostels`: Fetch a list of hostels.
- `POST /hostels`: Create a new hostel listing.
- `GET /hostels/:id`: Fetch details of a specific hostel.
- `GET /hostels/:id/price_per_day`: Fetch the price per day for a specific hostel.
- `POST /reservations`: Create a new reservation.
- `GET /reviews`: Fetch a list of reviews.
- `POST /reviews`: Create a new review.

For more detailed information about API endpoints, refer to the API documentation or codebase.

## Deployment

The backend can be deployed to platforms like Heroku, AWS, or any other hosting provider of your choice.

## Contributors

- [Your Name](https://github.com/yourusername)

## License

This project is licensed under the [MIT License](LICENSE).
```

Please replace `<repository_url>`, `<repository_directory>`, and `[Your Name](https://github.com/yourusername)` with your actual repository URL, directory, and your GitHub username. Additionally, modify the README as needed to include any additional information specific to your backend setup and deployment.