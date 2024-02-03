import { LightningElement, api } from 'lwc';

export default class FlowLwcMap extends LightningElement {
    @api street;
    @api city;
    @api country;
    @api title;
    @api description;

    get mapMarkers() {
        return [
            {
                location: {
                    Street: this.street,
                    City: this.city,
                    Country: this.country
                },
                title: this.title,
                description: this.description,
                icon: 'standard:account'
            }
        ];
    }

    get isMapLoad() {
        return this.street && this.city && this.country;
    }
}
