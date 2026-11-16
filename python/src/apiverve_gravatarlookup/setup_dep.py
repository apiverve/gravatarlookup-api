from setuptools import setup, find_packages

setup(
    name='apiverve_gravatarlookup',
    version='1.2.6',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Gravatar Lookup is a Gravatar API for email lookups: send an email address and get its public Gravatar profile and avatar image URL. It returns the display name, username, biography, location, company, job title and pronouns; paid plans add linked accounts (hidden ones flagged) and whether the email has its own uploaded avatar.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/gravatarlookup?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
