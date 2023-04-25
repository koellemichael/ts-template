import { add, sleep } from './helper.ts';

console.log('Waiting 3 secs');
await sleep(3);
console.log('Hello World', add(40, 2));
