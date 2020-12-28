from query_functions import take_evth_from_table
from table import Table
import tkinter as tk


# Basic window settings
root = tk.Tk()
root.title('Auto Company Database Application')
# root.geometry('800x600')

# Headers for tables
headers = {
    'clients': ('client_id', 'last_name', 'first_name', 'email', 'phone'),
    'suppliers': ('supplier_id', 'company_name', 'contact_name', 'country', 'city', 'address', 'phone'),
    'payments': ('payment_id', 'client_id', 'card_number', 'payment_date', 'is_paid'),
    'orders': ('order_id', 'client_id', 'employee_id', 'payment_id', 'destination_country', 'destination_city', 'destination_address', 'cargo', 'cost'),
    'employees': ('employee_id', 'last_name', 'first_name', 'birth_date', 'hire_date', 'salary', 'email', 'phone'),
    'vehicles': ('vehicle_id', 'employee_id', 'supplier_id', 'model_id', 'register_number'),
    'fuel_types': ('fuel_type_id', 'fuel_name'),
    'models': ('model_id', 'fuel_type_id', 'type', 'brand', 'model', 'mass', 'color', 'fuel_volume')
}

# Header for buttons
tables_label = tk.Label(root, text='Tables')
tables_label.grid(row=0, column=0)


# All the buttons
clients_btn = tk.Button(root, text='clients', command=lambda: show_table('clients'))
clients_btn.grid(row=1, column=0, sticky='ew')

suppliers_btn = tk.Button(root, text='suppliers', command=lambda: show_table('suppliers'))
suppliers_btn.grid(row=2, column=0, sticky='ew')

payments_btn = tk.Button(root, text='payments', command=lambda: show_table('payments'))
payments_btn.grid(row=3, column=0, sticky='ew')

orders_btn = tk.Button(root, text='orders', command=lambda: show_table('orders'))
orders_btn.grid(row=4, column=0, sticky='ew')

employees_btn = tk.Button(root, text='employees', command=lambda: show_table('employees'))
employees_btn.grid(row=5, column=0, sticky='ew')

vehicles_btn = tk.Button(root, text='vehicles', command=lambda: show_table('vehicles'))
vehicles_btn.grid(row=6, column=0, sticky='ew')

fuel_types_btn = tk.Button(root, text='fuel_types', command=lambda: show_table('fuel_types'))
fuel_types_btn.grid(row=7, column=0, sticky='ew')

models_btn = tk.Button(root, text='models', command=lambda: show_table('models'))
models_btn.grid(row=8, column=0, sticky='ew')


# Function for tables showing

def show_table(table_name: str):
    # Clear column 1
    for item in root.grid_slaves():
        if int(item.grid_info()['column']) == 1:
            item.grid_forget()

    label = tk.Label(root, text=f'Table: {table_name}')
    label.grid(row=0, column=1)

    data = tuple(take_evth_from_table(table_name))
    table = Table(root, headings=headers[table_name], rows=data)
    table.grid(row=1, column=1, rowspan=10)



root.mainloop()
