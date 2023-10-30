import { NextRequest } from "next/server";
import { client } from '@/lib/pg'; // Cambia la importación a './pg' en lugar de '@/lib/pg'

/**
 * verbos htpp
 * GET
 * POST
 * DELETE
 * PUT
 * PATH
 * OPTIONS
 */
export async function GET(request) {
    const data = await client.query('SELECT id, cedula, created_at as date FROM "Clientes";');
    const { rows, rowCount } = data;
    if (rowCount > 0) return Response.json({ results: rows });
    else return new Response(null, { status: 404 });
}

export function POST() {
    // Implementa la función POST según tus requerimientos
}
