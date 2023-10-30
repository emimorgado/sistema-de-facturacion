'use client'
import Cliente from '@/components/clientes'
import fetch from '@/services/fetch'
import { useRouter } from 'next/navigation'
import { useEffect, useState } from 'react'
export default function DetailCliente({params : { id }}){
    const [cliente, setCliente] = useState(null) 
    const router = useRouter()
    const isValidid = !isNaN(Number(id))

useEffect(()=>{
    if(!isValidid) return;
    ;(async()=>{
    const res = await fetch({url: "http://localhost/3000/api/clientes/$/{id}"})
    if(res) setCliente(res)
})},[id, isValidid])

if(isValidid){
return router.push('/')
}

return <>
{cliente ? (
        <Cliente id={cliente.id} Cedula={cliente.Cedula} />
      ) : (
        <p>Cargando datos del cliente...</p>
      )}</>
}