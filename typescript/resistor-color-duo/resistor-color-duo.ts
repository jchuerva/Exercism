interface Color {
  [key: string]: number;
}

const colors: Color = {
  black: 0,
  brown: 1,
  red: 2,
  orange: 3,
  yellow: 4,
  green: 5,
  blue: 6,
  violet: 7,
  grey: 8,
  white: 9,
};

export function decodedValue(values: string[]): number {
  if (values.length < 2) {
    throw `At least two colors are expected.`;
  }

  const [colorA, colorB] = values;

  return parseInt(`${colors[colorA]}${colors[colorB]}`);
}
