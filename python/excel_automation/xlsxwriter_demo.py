import os
import xlsxwriter

workbook = xlsxwriter.Workbook('demo0001.xlsx')
worksheet = workbook.add_worksheet('001')

current_dir = os.getcwd()
files = os.listdir(current_dir)
height = 20
current_pic_prefix = '0001'
xth_picture = 0
for file in files:
    if file.find('.jpeg') > -1:
        first, second = file.split('-')
        if current_pic_prefix == first:
            xth_picture = xth_picture + 1
            worksheet.write(1 + height * (xth_picture - 1) - 1, 1, file)
            worksheet.insert_image(1 + height * (xth_picture - 1), 1, file)
        else:
            current_pic_prefix = first
            xth_picture = 1
            if (int(current_pic_prefix) % 10 == 1):
                workbook = xlsxwriter.Workbook('demo' + current_pic_prefix + '.xlsx')
            worksheet = workbook.add_worksheet(current_pic_prefix)
            worksheet.write(1 + height * (xth_picture - 1) - 1, 1, file)
            worksheet.insert_image(1 + height * (xth_picture - 1), 1, file)
workbook.close()

