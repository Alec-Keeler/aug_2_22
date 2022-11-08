'use strict';

module.exports = {
  up: async (queryInterface, Sequelize) => {
    /**
     * Add seed commands here.
     *
     * Example:
     */
    await queryInterface.bulkInsert('Colors', [
      {
        name: 'red'
      },
      {
        name: 'r'
      },
      {
        name: 'yellow'
      }
    ]);
  },
  // INSERT INTO Colors (name, createdAt)

  down: async (queryInterface, Sequelize) => {
    /**
     * Add commands to revert seed here.
     *
     * Example:
     */
    await queryInterface.bulkDelete('Colors', {
      name: [
        'red',
        'blue',
        'yellow'
      ]
    }, {});
  }
};
