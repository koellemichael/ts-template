export const add = (x: number, y: number) => x + y;

export const sleep = (s: number) =>
  new Promise((r) => {
    setTimeout(r, s * 1000);
  });
