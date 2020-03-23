describe('review game list', () => {
  beforeEach(() => cy.visit('/'));

  it('should display a list of games', () => {
    cy.contains('Board Game Hoard: Review');

    cy.contains('a', 'The Werewolves of Millers Hollow').within(() => {
      cy.contains('/5');
      cy.contains('$35.00');
    });
    cy.contains('a', 'Monopoly').within(() => {
      cy.contains('/5');
      cy.contains('$15.00');
    });
    cy.contains('a', 'Exploding Kittens').within(() => {
      cy.contains('/5');
      cy.contains('$45.00');
    });
  });

  it('should navigate to game review details', () => {
    cy.contains('a', 'The Werewolves of Millers Hollow').click();
    cy.url().should('contain', 'review/the-werewolves-of-millers-hollow');
  });
});
