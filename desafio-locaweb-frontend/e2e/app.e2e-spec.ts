import { DesafioLocawebFrontendPage } from './app.po';

describe('desafio-locaweb-frontend App', function() {
  let page: DesafioLocawebFrontendPage;

  beforeEach(() => {
    page = new DesafioLocawebFrontendPage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
