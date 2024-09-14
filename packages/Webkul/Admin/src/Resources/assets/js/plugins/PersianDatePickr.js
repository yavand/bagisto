import Vue3PersianDatetimePicker from 'vue3-persian-datetime-picker'
export default {
    install: (app) => {
        window.PersianDatetimePicker=Vue3PersianDatetimePicker;
        app.use(Vue3PersianDatetimePicker, {
            name: 'PersianDatePicker',
        })
    },
};
