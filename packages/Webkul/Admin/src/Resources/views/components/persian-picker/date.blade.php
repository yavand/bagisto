<persian-date-picker {{ $attributes }}>
    {{ $slot }}
</persian-date-picker>
@pushOnce('scripts')
    <script
        type="text/x-template"
        id="v-persian-date-picker-template">
        <slot></slot>
    </script>

    <script type="module">
        app.component('persian-date-picker', {
            template: '#v-persian-date-picker-template',
            props: {
                name: String,
                value: String,
                allowInput: {
                    type: Boolean,
                    default: true,
                },
                modelValue: String,
                disable: Array,
                minDate: String,
                maxDate: String,

                format: String,
                displayFormat: String,
                editable: Boolean,
                inputClass: String,
                placeholder: String,
                altFormat: String,
                color: String,
                autoSubmit: Boolean,

            },

            data: function() {
                return {
                    datepicker: null
                };
            },

            mounted: function() {
                let options = this.setOptions();

                this.activate(options);
            },

            methods: {
                setOptions: function() {
                    let self = this;

                    return {
                        format: 'YYYY-MM-DD HH:mm',
                        displayFormat: 'jYYYY-jMM-jDD',
                        editable: false,
                        inputClass: 'flex min-h-[39px] w-full rounded-md border px-3 py-2 text-sm text-gray-600 transition-all hover:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400',
                        placeholder: 'Please select a date',
                        altFormat: 'YYYY-MM-DD HH:mm',
                        color: '#2214d8',
                        autoSubmit: false,
                        //...
                        //... And whatever you want to set as default.
                        //...

                        onChange: function(selectedDates, dateStr, instance) {
                            self.$emit("onChange", dateStr);
                        }
                    };
                },

                activate: function(options) {
                    //let element = this.$el.getElementsByTagName("input")[0];
                    this.datepicker = new PersianDatetimePicker();
                },
                clear: function() {
                    this.datepicker.clear();
                }
            }
        });

    </script>
@endPushOnce
