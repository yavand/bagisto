<v-persian-date-picker {{ $attributes }}>
    {{ $slot }}
</v-persian-date-picker>

@pushOnce('scripts')
    <script
        type="text/x-template"
        id="v-persian-date-picker-template"
    >
        <span class="relative inline-block w-full">

            <slot></slot>

            <i class="icon-calendar pointer-events-none absolute top-1/2 -translate-y-1/2 text-2xl text-gray-400 ltr:right-2 rtl:left-2"></i>
        </span>
    </script>

    <script type="module">
        console.log('in component');
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
                        allowInput: this.allowInput ?? true,
                        disable: this.disable ?? [],
                        minDate: this.minDate ?? '',
                        maxDate: this.maxDate ?? '',
                        dateFormat: "Y-m-d",
                        weekNumbers: true,

                        format: 'YYYY-MM-DD HH:mm',
                        displayFormat: 'jYYYY-jMM-jDD HH:mm',
                        editable: false,
                        inputClass: 'form-control my-custom-class-name',
                        placeholder: 'Please select a date',
                        altFormat: 'YYYY-MM-DD HH:mm',
                        color: '#00acc1',
                        autoSubmit: true,

                        onChange: function(selectedDates, dateStr, instance) {
                            self.$emit("onChange", dateStr);
                        }
                    };
                },

                activate: function(options) {
                    let element = this.$el.getElementsByTagName("input")[0];
                    console.log(options);
                    this.datepicker = new VuePersianPicker();
                },
                clear: function() {
                    this.datepicker.clear();
                }
            }
        });

    </script>
@endPushOnce
