/** @type {import('tailwindcss').Config} */
export const content = ["content/**/*.md", "layouts/**/*.html"];
export const theme = {
  extend: {},
};
module.exports = {
  content: ["content/**/*.md", "layouts/**/*.html"],
  theme: {
    extend: {},
  },


  plugins: [require("daisyui")],

  daisyui: {
    themes: true,
      logs: false,
  }

}