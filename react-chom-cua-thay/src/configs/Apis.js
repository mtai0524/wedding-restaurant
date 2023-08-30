import axios from 'axios'

const SERVER_CONTEXT = "/WeddingRestaurant";

export const endpoint = {
    "users" : `${SERVER_CONTEXT}/api/users`
}
export default axios.create({
    baseURL: "http://localhost:8080"
})