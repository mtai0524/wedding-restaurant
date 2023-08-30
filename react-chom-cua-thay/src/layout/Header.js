import React, { useEffect, useState } from 'react'
import { Card, Spinner } from 'react-bootstrap';

export const Header = () => {
    const [users, setUsers] = useState(null);
    const loadUsers = async () => {
        // let res =  await fetch("https://localhost:7121/api/ApiUser");
        let res = await fetch("http://localhost:8080/WeddingRestaurant/api/users");
        let data = await res.json();

        setUsers(data);
    }
    useEffect(() => {
        loadUsers();
    }, [])
    if (users === null) {
        return <Spinner animation="border" role="status">
            <span className="visually-hidden">Loading...</span>
        </Spinner>
    }
    return (
        <>
            <h1>header</h1>
            <div class="container">
                <div class="row">
                        {users.map(user => (
                            <Card key={user.userId} style={{ width: '18rem', marginRight:'20px'}}>
                                <Card.Img variant="top" src={user.avatar} style={{ height: "150px" }} />
                                <Card.Body>
                                    <Card.Title>{user.username}</Card.Title>
                                    <Card.Text>
                                        Role: {user.role}
                                    </Card.Text>
                                    <a href="#" className="btn btn-primary">View Profile</a>
                                </Card.Body>
                            </Card>
                        ))}
                </div>
            </div>
        </>
    )
}
export default Header
