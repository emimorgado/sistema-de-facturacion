import { client } from '@/lib/pg'
import { NextRequest } from 'next/server'
/**
 * @param {NextRequest} request
 * @param {{params : {id:string}}}} param1 
 */
export async function GET(request, {params: {id}}){
const idNumber = Number(id)

if (isNaN(idNumber)) return new Response('',{ status:404 })
    const res = client.query("SELECT id, Cedula, created_at FROM cliente WHERE id=?", [idNumber] )
}
