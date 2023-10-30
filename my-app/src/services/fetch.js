export async function fetch({ method = 'GET', url, boby = null}){
    const options = {
        body, 
        method, 
        headers: {'Content-Type' : 'application/json'},
    }
    const response = await window.fetch(url,options)

    if (response.ok){

        const resBody = await response.json()
        return resBody
    }
    return null
}
