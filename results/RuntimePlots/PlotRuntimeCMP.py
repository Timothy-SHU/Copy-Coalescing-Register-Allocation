# -*- coding: utf-8 -*-
import os
import sys
import numpy as np
import matplotlib as mplt
import matplotlib.pyplot as plt

def PlotFig(ILPTime, TreewidthTime, bench):
    ILPTime = np.array(ILPTime)
    TreewidthTime = np.array(TreewidthTime)

    if bench == "":
        plt.rcParams["figure.figsize"] = (8, 8)
    else:
        plt.rcParams["figure.figsize"] = (6, 6)

    plt.xlim((0.00003, 600))
    plt.ylim((0.00003, 600))
    plt.xticks(fontsize = 16)
    plt.yticks(fontsize = 16)

    plt.xscale('log')
    plt.yscale('log')

    plt.axline((0, 0), (1, 1), color = 'black', linewidth = 2, alpha = 0.5)
    plt.scatter(TreewidthTime[TreewidthTime <= ILPTime], ILPTime[TreewidthTime <= ILPTime], c = "#2CA02C", s = 8, alpha = 0.5, label = "our approach is faster")
    plt.scatter(TreewidthTime[TreewidthTime > ILPTime], ILPTime[TreewidthTime > ILPTime], c = "#D62728", s = 8, alpha = 0.5, label = "ILP-based method is faster")

    print(np.sum(TreewidthTime <= ILPTime))
    print(np.sum(TreewidthTime > ILPTime))

    plt.savefig("ILP-TW"+bench+".pdf")
    plt.show()
 

def main():
    bench = ""
    ILPSize = []
    ILPTime = []
    input_file = open("ILP"+bench+".txt", 'r')
    for line in input_file.readlines():
        elements = line.split()
        ILPSize.append(float(elements[0]))
        ILPTime.append(float(elements[1]))
    input_file.close()

    TreewidthSize = []
    TreewidthTime = []
    input_file = open("Treewidth"+bench+".txt", 'r')
    for line in input_file.readlines():
        elements = line.split()
        TreewidthSize.append(float(elements[0]))
        TreewidthTime.append(float(elements[1]))
    input_file.close()
    
    PlotFig(ILPTime, TreewidthTime, bench)
       
if __name__ == "__main__":
	main()
