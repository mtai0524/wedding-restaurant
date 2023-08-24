import { Button, Col, Container, Form, InputGroup, Nav, NavDropdown, Navbar, Row } from "react-bootstrap"
import "./UserCss.css";
const Header = () => {
    return (
        <>
            <Navbar bg="gray" expand="lg" className="custom-navbar">
            <Navbar.Brand href="#home" style={{ marginLeft: '20px' }}>Nhà hàng tiệc cưới</Navbar.Brand>
            <Navbar.Toggle aria-controls="basic-navbar-nav" />
            <Navbar.Collapse id="basic-navbar-nav">
                <Nav className="custom-nav-link">
                <Nav.Link href="#home">Home</Nav.Link>
                        <Nav.Link href="#branch">Branch</Nav.Link>
                        <Nav.Link href="#hall">Hall</Nav.Link>
                        <NavDropdown title="Services" id="basic-nav-dropdown">
                            <NavDropdown.Item href="#service1">Service 1</NavDropdown.Item>
                            <NavDropdown.Item href="#service2">Service 2</NavDropdown.Item>
                            <NavDropdown.Item href="#service3">Service 3</NavDropdown.Item>
                        </NavDropdown>
                        <Nav.Link href="#menu">Menu</Nav.Link>
                        <Nav.Link href="#order">Order</Nav.Link>
                </Nav>
                <Container>
                    <Row className="justify-content-end">
                        <Col sm={5}>
                            <Form className="d-flex">
                                <Form.Control
                                    className="custom-search-input"
                                    type="search"
                                    placeholder="Search"
                                    aria-label="Search"
                                />
                                <Button variant="outline-primary" className="custom-search-button">
                                    Search
                                </Button>
                            </Form>
                        </Col>
                    </Row>
                </Container>
            </Navbar.Collapse>
        </Navbar>
            <h1>this is header</h1>
        </>
    )
}
export default Header
