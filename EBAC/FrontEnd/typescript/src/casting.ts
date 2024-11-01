namespace casting {
    let idade: any = 25;
    (idade as number).toFixed();
    (idade as string).length;

    let nome: string = 35 as unknown as string;
}