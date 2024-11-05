import { testSum } from '@utils/test-func';

async function bootstrap() {
  console.log('TEST FUNC', testSum(1, 3));
}
bootstrap();
