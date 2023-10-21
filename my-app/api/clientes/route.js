import { NextRequest } from "next/server";

import { Client } from '@/lib/pg';
import { client } from "@/app/lib/pg";
/**
 * verbos htpp
 * GET
 * POST
 * DELETE
 * PUT
 * PATH
 * OPTIONS
 */
export  async function GET (request ){
    const data = await client.query('SELECT id,cedula, created_at as date FROM clientes;')
    const { rows, rowCount } = data
    if (rowCount > 0) return Response.json({ results: rows })
    else return new Response(null, { status: 404 })
}
export function POST (){
    
}