import config from '@config/app';

export function testSum(a: number, b: number) {
  if (config.IS_DEV) {
    console.debug(`Calling add function with arguments ${a} and ${b}`);
  }

  return a + b;
}
