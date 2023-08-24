import React from 'react'
import { Button, Card } from 'react-bootstrap'
import "./layout/UserCss.css";

class User extends React.Component {
    render() {
        return (
            <>
                <Card className="custom-card">
            <Card.Img variant="top" src={require("./images/IMG_20230817_192038_478.jpg")} />
            <Card.Body>
                <Card.Title>Card Title</Card.Title>
                <Card.Text>
                    Some quick example text to build on the card title and make up the bulk of the card's content.
                </Card.Text>
                <div className="button-container">
                    <Button className="card-button">Button 1</Button>
                </div>
            </Card.Body>
        </Card>
            </>
        )
    }
}
export default User