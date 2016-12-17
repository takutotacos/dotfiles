import os
import xlsxwriter

workbook = xlsxwriter.Workbook('demo0001.xlsx')
worksheet = workbook.add_worksheet('001')

current_dir = os.getcwd()
files = os.listdir(current_dir)
files = sorted(files)
height = 20
current_pic_prefix = '0001'
xth_picture = 0
options = {
        'font': {'size': 14},
        'align': {'horizontal':'center'},
        'line': { 'color': 'red',
            'width': 2.25},
        'fill': {'color': '#81d4fa'}
        }
for file in files:
    if file.find('.jpeg') > -1:
        print("this is about to be processed " + file)
        first, second = file.split('-')
        print(first)
        if current_pic_prefix == first:
            xth_picture = xth_picture + 1
            y_position = 1 + height * (xth_picture - 1)
            worksheet.write(y_position - 1, 1, file)
            worksheet.insert_image(y_position, 1, file)
            worksheet.insert_textbox(y_position, 0, options)
        else:
            current_pic_prefix = first
            xth_picture = 1
            y_position = 1 + height * (xth_picture - 1) - 1
            if (int(current_pic_prefix) % 10 == 1):
                workbook.close()
                workbook = xlsxwriter.Workbook('demo' + current_pic_prefix + '.xlsx')
            worksheet = workbook.add_worksheet(current_pic_prefix)
            worksheet.write(y_position - 1, 1, file)
            worksheet.insert_image(y_position, 1, file)
            worksheet.insert_textbox(y_position, 0, options)
workbook.close()

