<v-persian-date-picker {{ $attributes }}>
    {{ $slot }}
</v-persian-date-picker>

@pushOnce('scripts')
    <script
        type="text/x-template"
        id="v-persian-date-picker-template"
    >
        <custom-date-picker v-model="date" />


    </script>

    <script type="module">
        app.component('v-persian-date-picker', {
            template: '#v-persian-date-picker-template',

            props: {
                name: String,

                value: String,

                allowInput: {
                    type: Boolean,
                    default: true,
                },

                disable: Array,

                minDate: String,

                maxDate: String,
            },

            data() {
                return {
                    date: '2020-10-10'
                }
            },

            mounted: function() {
                let options = this.setOptions();

                this.activate(options);
            },
            components: {
                DatePicker: VuePersianDatetimePicker
            },
            methods: {
                setOptions: function() {
                    let self = this;

                    return {
                        allowInput: this.allowInput ?? true,
                        disable: this.disable ?? [],
                        minDate: this.minDate ?? '',
                        maxDate: this.maxDate ?? '',
                        altFormat: "Y-m-d",
                        dateFormat: "Y-m-d",
                        weekNumbers: true,

                        onChange: function(selectedDates, dateStr, instance) {
                            self.$emit("onChange", dateStr);
                        }
                    };
                },

                activate: function(options) {
                    let element = this.$el.getElementsByTagName("input")[0];

                    this.datepicker = new Flatpickr(element, options);
                },

                clear: function() {
                    this.datepicker.clear();
                }
            }
        });
    </script>
@endPushOnce
