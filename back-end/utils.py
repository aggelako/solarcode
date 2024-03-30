from sklearn.preprocessing import MinMaxScaler
from .Photovoltaic import PhotovoltaicPanel

def normalize_and_score_money(df):
    weights = {'money_invested': 0.7, 'wealth_categorization': 0.3}

    # Initialize MinMaxScaler
    scaler = MinMaxScaler()

    # Normalize 'money_invested'
    df['money_invested_normalized'] = scaler.fit_transform(df[['money_invested']])

    # Inverse 'wealth_categorization' scores to align with the scoring logic
    # becasuse welath_cat 1 is poor and 5 is rich , i invert it so the larger is better

    df['wealth_categorization_inverted'] = 6 - df['wealth_categorization']

    # Normalize 'wealth_categorization_inverted'
    df['wealth_categorization_normalized'] = scaler.fit_transform(df[['wealth_categorization_inverted']])

    # Weighted sum for final score
    df['total_score'] = (df['money_invested_normalized'] * weights['money_invested'] +
                         df['wealth_categorization_normalized'] * weights['wealth_categorization'])

    return df



# Function to normalize and score the DataFrame
def normalize_and_score_space(df):
    weights = {'squared_meters': 0.7, 'wealth_categorization': 0.3}

    # Initialize MinMaxScaler
    scaler = MinMaxScaler()

    # Normalize 'squared_meters'
    df['squared_meters_normalized'] = scaler.fit_transform(df[['squared_meters']])

    # Inverse 'wealth_categorization' scores to align with the scoring logic
    # becasuse welath_cat 1 is poor and 5 is rich , i invert it so the larger is better
    df['wealth_categorization_inverted'] = 6 - df['wealth_categorization']

    # Normalize 'wealth_categorization_inverted'
    df['wealth_categorization_normalized'] = scaler.fit_transform(df[['wealth_categorization_inverted']])

    # Weighted sum for final score
    df['total_score'] = (df['squared_meters_normalized'] * weights['squared_meters'] +
                         df['wealth_categorization_normalized'] * weights['wealth_categorization'])

    return df


def calculate_cost_of_PV(df):
    # Create a PhotovoltaicPanel instance for each row and calculate total cost
    panels = [PhotovoltaicPanel(row['squared_meters']) for _, row in df.iterrows()]
    total_costs = [panel.calculate_total_cost() for panel in panels]

    # Add total_costs to the DataFrame
    df['total_cost'] = total_costs
    return df

def balance_sums(dfmoney, dfspace):
    sum_of_money = dfmoney['money_invested'].sum()
    sum_of_cost = dfspace['total_cost'].sum()
    # print(dfmoney, dfspace,sum_of_money,sum_of_cost)

    while(sum_of_money != sum_of_cost):
        if sum_of_money > sum_of_cost:
            dfmoney = dfmoney.sort_values('money_invested')
            sum_of_money = dfmoney['money_invested'].sum() - dfmoney['money_invested'].iloc[0]

            if sum_of_money > sum_of_cost:
                dfmoney = dfmoney.iloc[1:]
                sum_of_money = dfmoney['money_invested'].sum()
            else:
                #tha paramenei anisothta
                break   
        else:
            dfspace = dfspace.sort_values('total_cost')
            sum_of_cost = dfspace['total_cost'].sum() - dfspace['total_cost'].iloc[0]
            if sum_of_cost > sum_of_money:
                dfspace = dfspace.iloc[1:]
                sum_of_cost = dfspace['total_cost'].sum()
            else:
                break
    return (dfmoney, dfspace)


