class PhotovoltaicPanel:
    def __init__(self, square_meters):
        self.square_meters = square_meters

        # Constants
        self.operational_years = 20
        self.cost_per_sqm = 250 #euro
        self.rent_value_per_sqm = 3 #euro to mhna

        self.total_cost = self.calculate_total_cost()

    def calculate_total_cost(self):
        # Calculate the total cost
        total_cost = (self.square_meters * self.cost_per_sqm)  + (self.rent_value_per_sqm * 12 * self.operational_years)
        total_cost = 1.02*total_cost #maintanance cost
        return total_cost
