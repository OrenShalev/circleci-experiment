console.log('styles start');
try {
    node-sass
    console.log('styles end');
} catch (e) {
    console.error(`styles failed`, e);
    throw e;
}