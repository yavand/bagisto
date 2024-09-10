import VuePersianDatetimePicker from 'vue-persian-datetime-picker';
console.log('in plugins');
export default {
    install: (app) => {
        window.VuePersianPicker = VuePersianDatetimePicker;
    },
};
